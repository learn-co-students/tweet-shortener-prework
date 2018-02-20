require 'pry'
def dictionary
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
end

def word_substituter(string)
  new_tweet = []

  string.split(" ").each do |word|
    if dictionary.keys.include?(word.downcase)
      dictionary.each do |long, short|
        if word.downcase == long
          new_tweet << short
        end
      end
    else
      new_tweet << word
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
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
    tweet[0...137] + "..."
  else
    tweet
  end
end



  

