# Write your code here.
# dictionary = {
# "hello" => 'hi',
# "to, two, too" => '2', 
# "for, four" => '4',
# 'be' => 'b',
# 'you' => 'u',
# "at" => "@", 
# "and" => "&"
# }

def word_substituter(tweets)
  dictionary = {
"hello" => 'hi',
"to" => '2',  
"two" => '2', 
"too" => '2', 
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@", 
"and" => "&"
}
  p string = tweets.split
  array = []
  string.each do |word| 
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
      array << word 
    else 
      array << word 
    end 
  end
  array.join(" ")
end 

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end 
end 

def selective_tweet_shortener(tweet)
  tweet[0..139]
end 

def shortened_tweet_truncator(tweet)
  tweet.slice(0...140)
end 