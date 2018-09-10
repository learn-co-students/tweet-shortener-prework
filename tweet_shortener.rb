  def dictionary
    {
      "hello" => 'hi',
      "to" => '2',
      "two" => '2',
      "too" => '2',
      "for" => '4',
      "four" => '4',
      "be" => 'b',
      "you" => 'u',
      "at" => '@',
      "and" => '&'
    }
  end   
  
  
  def word_substituter(string)
    string_array = string.split(' ')
    i = 0
    while i < string_array.size
      dictionary.each { |key, value|
        if string_array[i].downcase == key 
          string_array[i] = value
        end
      }
      i += 1
    end
    string_array.join(' ')
  end
  
  
  def bulk_tweet_shortener(tweets)
    tweets.map do |phrase|
      puts word_substituter(phrase)
    end
  end

  def selective_tweet_shortener(tweet)
    if tweet.size > 140 
      word_substituter(tweet)
    else
      return tweet
    end  
  end  
  
def shortened_tweet_truncator(string)
  if string.length > 140
    string = string[0..139]
    string[137] = '.'
    string[138] = '.'
    string[139] = '.'
    return string
  else
    return string
  end  
end  
