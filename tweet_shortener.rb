require 'pry'

def dictionary
  dictionary = {
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

def word_substituter(tweet_string)
  tweet_array = []
  tweet_string.split(" ").collect do |word|
    if dictionary.keys.include?(word.downcase)
      tweet_array << dictionary[word.downcase]
    else
      tweet_array << word
    end
  end
  tweet_array.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
   if tweet.length > 140
     return word_substituter(tweet)
   else
     return tweet
   end
end
 
def shortened_tweet_truncator(tweet)
  if tweet.length > 140
     short_tweet = word_substituter(tweet)
      if short_tweet.length > 140
        return "#{short_tweet[0..136]}..."
      else
        return short_tweet
      end
   else
     return tweet
   end
end
     
     
     
     
     