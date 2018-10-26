def dictionary
  substitute_hash = {
  "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
    
  }
  
end

#use has.key - see if it's true 
#then use fetch to pop value
#build new array
# add to new array
def word_substituter(tweet)
  new_array = []
  long_words = dictionary.keys
  
  tweet_words = tweet.split
 
  tweet_words.each do |word|
    curWord = word.downcase
    if dictionary.has_key?(curWord)
      new_array << dictionary.fetch(curWord)
    else
      new_array << word
    end
  end
  new_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
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
 
#if selective_tweet_shortener > 140 use array.slice and put ... as the last 3 characters.  Nm - do string [0..137] and join ...
# use correct variable name eg tweet vs string`
def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length >140
    tweet[0..136].concat("...")
  else
    tweet
  end
end