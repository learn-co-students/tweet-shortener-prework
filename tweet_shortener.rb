# Write your code here.

def word_substituter(long_word)
  dictionary = {:hello => 'hi',
  :to => '2',
  :two => '2',
  :too =>'2',
  :for => '4',
  :For => '4',
  :four => '4',
  :be => 'b',
  :you => 'u',
  :at => "@",
  :and => "&"}
  long_array = long_word.split
  new_str = ''
  long_array.each do |el|
  dictionary.each do |key,value|
    if key.to_s == el
      el = value.to_s
    end
  end
  new_str += el + " "
end
new_str.strip
end

def bulk_tweet_shortener(tweet)
  tweet.each do |el|
   puts word_substituter(el)
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
  if tweet.size > 140
    new_tweet = word_substituter(tweet)
    return new_tweet[0,137] + '...'
  else
    return tweet
  end
end
