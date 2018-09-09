# Write your code here.

def dictionary
  dictionary = 
  {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    "for" => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&',
  }
  
end


def word_substituter(tweet)
  
  convert_array = tweet.split
  # puts convert_array.inspect
  
  new_array = []
  convert_array.each do |tweet|
    if dictionary.include?(tweet.downcase)
      new_array.push(dictionary[tweet.downcase])
    else
      new_array.push(tweet)
    end
  end
  return new_array.join(' ')
  
end
  
  
def selective_tweet_shortener(tweet)
  dictionary = 
  {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    "for" => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&',
  }
  
  new_array = []
  tweet_length = tweet.length
  puts tweet_length
  if tweet_length > 140
    convert_array = tweet.split
    convert_array.each do |tweet|
    if dictionary.include?(tweet)
      new_array.push(dictionary[tweet])
    else
      new_array.push(tweet)
    end
  end
  
  else
    return tweet
  end
  return new_array.join(' ')
end


def shortened_tweet_truncator(tweet)
  tweet_length = tweet.length
  if tweet_length > 140
    return "#{tweet[0...140]}"
  else
    return tweet
  end
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    #tweet_arr = tweet.split
   # tweet_arr.each do |word|
     # if dictionary.include?(word)
        #new_arr.push(dictionary[word])
      #else
        #new_arr.push(word)
     # end
    #end
  #end
  #return  new_arr.join(' ')
  puts word_substituter(tweet)
  end
end

        
  




    




  



  