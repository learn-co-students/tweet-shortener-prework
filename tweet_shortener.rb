# Write your code here.

def word_substituter(word)
  subs = {
    
"hello" => 'hi',
  "too" => '2',
"two" => "2",
"to" => "2",
"for"=> "4",
"four" => "4",
'be'  =>  'b',
"you" =>  "u" ,
"at" => "@",
"and" => "&"
    
  }
  
  words = word.split(" ")
  keys = subs.keys
  

subs.default_proc = ->(h, k) { k }
word.gsub(/\w+/, subs)
  
  
  
  
end



def bulk_tweet_shortener(array)
  
  subs = {
    
"hello" => 'hi',
  "too" => '2',
"two" => "2",
"to" => "2",
"for"=> "4",
"For" => "4",
"four" => "4",
'be'  =>  'b',
"you" =>  "u" ,
"at" => "@",
"and" => "&"
    
  }
  
  
  subs.default_proc = ->(h, k) { k }
  array.each{ |item| puts  item.gsub(/\w+/, subs)}
  #word.gsub(/\w+/, subs)
  
  
  
end 


def selective_tweet_shortener(sentence)
   subs = {
    
"hello" => 'hi',
  "too" => '2',
"two" => "2",
"to" => "2",
"for"=> "4",
"For" => "4",
"four" => "4",
'be'  =>  'b',
"you" =>  "u" ,
"at" => "@",
"and" => "&"
    
  }

    sentence.length > 140 ? word_substituter(sentence) : sentence
end 


def shortened_tweet_truncator(tweet)
  if tweet.length <= 140 
    tweet 
    
  else 
    
    a = word_substituter(tweet)
    a[0..139]
  end 
  
end 







































