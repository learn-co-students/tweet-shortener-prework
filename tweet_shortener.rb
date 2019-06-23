# Write your code here.
def dictionary
  {
"hello" => "hi",
"to" => "2",
"two" => "2",
"too" => "2",
"for" => "4",
"four" => "4",
'be' => "b",
'you' => "u",
"at" => "@",
"and" => "&"
}
end

def word_substituter(tweet)
  array = tweet.split(" ")
  short_tweet = []
  array.map do |word|
    if dictionary.keys.include?(word.downcase)
      short_tweet << dictionary[(word.downcase)]
    else
      short_tweet << word
    end
  end
    short_tweet.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
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
  if tweet.length > 140
    word_substituter(tweet)
      if word_substituter(tweet).length > 140
        word_substituter(tweet)[0..136] + "..."
      else
        word_substituter(tweet)
    end
  else
    tweet
  end
end