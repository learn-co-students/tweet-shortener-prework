# require 'pry'

def dictionary
  {
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2',
"for"=> '4',
"four" => '4',
"be" => 'b',
'you' => 'u',
"at" => "@",
"and" => "&"
}
end

def word_substituter(tweet)
  dictionary
  tweet_array=tweet.split(" ")
  counter_tweet=0
  while counter_tweet<tweet_array.size
    dictionary.each do |long_word,short_word|
      if tweet_array[counter_tweet].upcase == long_word.upcase
        tweet_array[counter_tweet] = short_word
      end
    end
    counter_tweet+=1
  end
  tweet_array.join(" ")
end


def bulk_tweet_shortener(tweets)
  dictionary
  counter=0
  while counter<tweets.size
    puts word_substituter(tweets[counter])
    counter+=1
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size>140
    new_tweet= word_substituter(tweet)
  else
    new_tweet= tweet
  end
  new_tweet
end

def shortened_tweet_truncator(tweet)
output=tweet
  if selective_tweet_shortener(tweet).size>140
    trunc_tweet=selective_tweet_shortener(tweet)[0..136]
    output= "#{trunc_tweet}..."
    # binding.pry
  else output= selective_tweet_shortener(tweet)
  end
  output
end
