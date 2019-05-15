# Write your code here.
def dictionary
  words = {
    "hello" => "hi",
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  wordsArray = tweet.split(" ")
  wordsArray.each_with_index do |words , i|
    dictionary.keys.each do |x|
      if x == words
      wordsArray[i] = dictionary[x]
      end
    end
  end
wordsArray.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener (tweet)
if tweet.length > 140
  word_substituter(tweet)
else
 tweet
end
end

def shortened_tweet_truncator (tweet)

   if tweet.length > 140
   tweet =  word_substituter(tweet)
   tweet[0..136] + "..."
  else
   tweet
  end
  end 
