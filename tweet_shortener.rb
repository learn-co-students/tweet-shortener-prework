
# Write your code here.
require 'pry'

dictionary= {hello: "hi", be:'b', two:"2", too:'2', to:'2', for:'4', four:'4', you:'u', at:'@', and:'&'}

def word_substituter(string)
  new_tweet =[]
  dictionary= {hello: "hi", be:'b', two:"2", too:'2', to:'2', for:'4', four:'4', you:'u', at:'@', and:'&'}
  tweet=string.split(" ")
  tweet.each do |word|
    nextword = word
    dictionary.each do |key,val|
      if word == key.to_s
        nextword=val
      elsif word == key.to_s.capitalize
        nextword=val.capitalize
      end
    end
    new_tweet.push(nextword)
  end
  return new_tweet.join(" ")
end


def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length>139
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweeet=word_substituter(tweet)
  if tweeet.length>140
    return tweeet[0...140]
  else
    return tweeet
  end
end
