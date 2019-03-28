require 'pry'
# Write your code here.
def dictionary (word)
  dictionary_hash = { :hello =>'hi',
  :two => '2',
  :to => '2',
  :too => '2',
  :for => '4',
  :four => '4',
  :be => 'b',
  :you=> 'u',
  :at => '@',
  :and => '&' }
  abbrev=""
  abbrev_flag=false
  dictionary_hash.each do |word_key, word_abbrev|
    if (word.downcase == word_key.to_s)
      abbrev = word_abbrev
      abbrev_flag = true
    end
  end
  if abbrev_flag == true
    return (abbrev)
  else
    return(word)
  end
end 

def word_substituter(tweet)
  tweet_array = tweet.split(' ')
  newarray = tweet_array.collect do |word|
    word = dictionary(word)
  end
#  binding.pry
  tweetout = newarray.join(' ')
  tweetout
end
  # dictionary ("four")
def bulk_tweet_shortener (tweetarr)
  tweetarr.each do |tweet|  
    subtweet = word_substituter (tweet)
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
#  binding.pry
  if tweet.length > 140
    subtweet=word_substituter(tweet)
  else
    subtweet=tweet
  end
end

def shortened_tweet_truncator(tweet)
  subtweet = tweet
  if tweet.length > 140
    subtweet = word_substituter(tweet)
    if subtweet.length > 140
    subtweet = subtweet[0..136] +"..."
#    binding.pry
    end
  end
  subtweet
end
  