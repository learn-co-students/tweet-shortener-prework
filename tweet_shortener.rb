# Write your code here.
def dictionary 
{
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2',
"for" => '4',
"For" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@", 
"and" => "&",
}
end

def word_substituter(string)
  string = string.split
  new_string = []
  dictionary_arr = dictionary.keys
  string.each do |word|
      if dictionary_arr.include?(word)
        new_string << dictionary[word]
      else
        new_string << word
      end
  end 
  new_string.join(" ")
end   

def bulk_tweet_shortener(array)
  array.collect do |tweet|
    value = word_substituter(tweet)
    puts "#{value}"
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
      if tweet.length > 140 
        tweet[0..136] + "..."
      end  
  else  
    tweet
  end  
end