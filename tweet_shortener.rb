def dictionary
  dict = {
  "hello" => 'hi',
  ['to', 'two', 'too'] => '2',
  ['for', 'four'] => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
  }
end

def transform_word(word)
   dictionary.each do |name, val|
  if name.include?(word.downcase) and word.size > 1
      word = val
  else
     word = word
  end
 end
 return word
end

def word_substituter(tweet_string)
 tweet_arr = tweet_string.split(" ")
 new_arr = tweet_arr.collect {|x| transform_word(x)}
 new_arr.join(" ")
end

def bulk_tweet_shortener(arr_of_tweets)
  arr_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.size > 140? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.size < 140
    return tweet
  else
  return "#{selective_tweet_shortener(tweet)[0...137]}..."
 end
end
