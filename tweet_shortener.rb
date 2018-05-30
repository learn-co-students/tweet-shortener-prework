# Write your code here.

def dictionary
  dictionary =
    {
      :"hello" => 'hi',
      :"to" => '2',
      :"two" => '2',
      :"too" => '2', 
      :"for" => '4',
      :"four" => '4',
      :'be' => 'b',
      :'you' => 'u',
      :"at" => "@", 
      :"and" => "&"
    }
end

def word_substituter(tweet_string)
  tweet_arr = tweet_string.split(" ")
   []
  
  replaced_arr = tweet_arr.map.with_index do |word, i|
    if dictionary.has_key?(word.downcase.to_sym)
      dictionary[word.downcase.to_sym]
    else
      word
    end
  end
  
  replaced_arr.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.map {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  short_tweet = selective_tweet_shortener(tweet)
  
  if short_tweet.length > 140
    short_tweet = short_tweet[0,137].concat("...")
  end
  
  short_tweet
end
