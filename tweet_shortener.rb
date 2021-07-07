# Write your code here.
def dictionary
  {'hello'=> 'hi',
    'to'=> '2',
    'two'=> '2',
    'too' => '2',
    'be' => 'b',
    'you'=> 'u',
    'at'=> '@',
    'and'=> '&',
    'for' => '4',
    'four' => '4'
  }
end
def word_substituter (tweet)
  words_array = tweet.split(' ')
  new_array = []
  
  words_array.each do |word|
    if dictionary.keys.include? (word.downcase)
      new_array << dictionary[word.downcase]
    else 
      new_array << word
    end
  end 
  new_array.join(' ')
end 

def bulk_tweet_shortener(array_of_tweets)
 
  array_of_tweets.map! do |tweet|
    puts word_substituter(tweet)
    word_substituter(tweet)
  end
  array_of_tweets
end

def selective_tweet_shortener (tweet)
  if tweet.length > 140
   return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator (tweet)
  shortened_tweet = word_substituter(tweet)
  
  if shortened_tweet.length > 140
    return shortened_tweet[0..139]
  else
    return shortened_tweet
  end
end