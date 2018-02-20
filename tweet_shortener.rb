# Write your code here.



def word_substituter(str)
   arr = str.split(' ')
  final_arr = []
  hash = {
    "hello" => 'hi',
    "two" =>  '2', 
    "to" =>  '2', 
    "too" =>  '2', 
    "for" => '4',
    "For" => '4',
    "four" => '4',
    'be' =>  'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&"
   }
  arr.each{
    |word|
    if hash.include?word
      final_arr.push(hash[word])
      next
    end
    final_arr.push(word)
  }
  final_arr.join(' ')
end



def bulk_tweet_shortener(arr)
  arr.each{
    |tweet|
    puts word_substituter(tweet)
  }
  
end

def selective_tweet_shortener(tweet)
  
   
   
    if tweet.length > 140 
      return word_substituter(tweet) 
    else
      return tweet
    end
   tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = tweet[0...137] + '...'
  
  end
  tweet
end