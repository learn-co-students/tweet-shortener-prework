def word_substituter(string)
dictionary = {
'hello' => 'hi',
'to' => '2',
'two' => '2', 
'too'=> '2', 
'for' => '4', 
'four'=> '4',
'be' => 'b',
'you' => 'u',
'at' => '@', 
'and' => '&'}

  all_words = string.split(' ')
  shortened = [] 
  all_words.each do |word|
    if dictionary.keys.include?(word.downcase)
      shortened << dictionary[word.downcase] 
    else 
      shortened << word 
    end 
  end 
  shortened.join(' ') 
end 

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts "#{word_substituter(tweet)}"
  end 
end 

def selective_tweet_shortener(tweet)
   if tweet.length > 140
    return word_substituter(tweet)
  end 
  tweet
end 

def shortened_tweet_truncator(tweet)
  short = selective_tweet_shortener(tweet) 
  if short.length > 140
    return short[0..135] + " ..."
  end 
  short 
end 

