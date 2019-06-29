def word_substituter(tweet)
  dictionary={
"hello" => 'hi',
"to" => '2', 
"two" => '2', 
"too" => '2', 
"for"=> '4',
"four"=> '4',
'be' => 'b',
'you'=> 'u',
"at" => "@" ,
"and" => "&"
}
 tweet= tweet.split(' ')
 key=dictionary.keys
  tweet.collect!.with_index do |x,i|
    if key.include?(x)==true
      tweet[i]=dictionary[x]
    elsif key.include?(x.downcase)==true
      tweet[i]=dictionary[x.downcase]
    else 
      tweet[i]=x
    end
  end
  tweet.join(' ')
 end
 
 def bulk_tweet_shortener(array)
   array.each do |x|
     puts word_substituter(x)
   end
 end
 
 def selective_tweet_shortener(tweet)
   if tweet.length>140
     word_substituter(tweet)
   else 
     tweet
   end
 end
 
 def shortened_tweet_truncator(tweet)
  tweet= word_substituter(tweet)
  if tweet.length>140
    tweet=tweet[0..136]+'...'
  end
  tweet
 end