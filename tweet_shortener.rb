# Write your code here.

def dictionary
  hash=
  {
    'hello'=>'hi',
    'to'=>'2',
    'too'=>'2',
    'two'=>'2',
    'be'=>'b',
    'you'=>'u',
    'at'=>'@',
    'and'=>'&',
    'for'=> '4'
  }
end


def word_substituter(string)
format = []
string=string.split(' ')
string.collect do |word|
  if dictionary.has_key?(word.downcase)
     format.push(dictionary[word.downcase])
  else
     format.push(word)
  end
end
return format.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweets)
  if tweets.length>140
    word_substituter(tweets)
  else
    tweets
  end
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
  if tweet.length>140
    return "#{tweet[0..136]}..."
  else
    return tweet
  end
end
