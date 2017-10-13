# Write your code here.
require 'pry'
def dictionary
  dictionary = {"hello"=> "hi",
     "to"=> '2', 'two' =>'2','too'=> '2',
      'for'=>'4','For'=>'4', 'four'=>'4',
         'be' =>'b',
          'you'=> 'u',
           'at'=> '@',
            'and'=> '&'}
end

def word_substituter(tweet)
array = []
  array = tweet.split(' ')
    dictionary.collect do |key, value|
      array.collect do |word|
      if word == key
        array[array.index(word)] = value
      end
    end
  end
  array.flatten.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |twit|
    puts "#{word_substituter(twit)}"
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).size > 140
    tweet1 = word_substituter(tweet)
    new_tweet = "#{tweet1[0..136]}..."
  else
    tweet
  end

end
