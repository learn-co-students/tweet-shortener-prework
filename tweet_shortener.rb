require('pry-byebug')

def word_substituter(tweet)
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

  split_tweet = tweet.split(' ')

  split_tweet.collect.with_index do |word, index|
    dictionary.collect do |original, short|
      if word == original || word == original.capitalize
        split_tweet[index] = short
      else
        word
      end
    end
  end
  split_tweet.join(' ')  
end

def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size >= 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    result = word_substituter(tweet)
    "#{result[0..135]} ..."
  else
    tweet
  end
end

thing = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"
shortened_tweet_truncator(thing)