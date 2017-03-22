def dictionary
  dictionary = {
    "hello" => "hi",
    "too" => "2",
    "to" => "2",
    "two" =>"2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  mapped_tweet = tweet.split(" ").map do |word|
    #this methods new array will be stored in the "mapped_tweet" variable
    #go thru the tweet, use the .split method to seperate each word into an array
    #iterate thru every word
    if dictionary.keys.include?(word.downcase)
      #if the dictionary hash includes a key(long word) that has an abbreviation
      dictionary[word.downcase]
      #get the value for the current word
      #(word is a variable that reps) all the key => value pairs in dictionary hash
    else
      word
      #return the original word if it's not included in the dictionary hash
    end
  end
  mapped_tweet.join(" ")
  #take the new array that you just mapped inside of and turn it back into a STRING
  #do this by using the .join method :)
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    #iterate thru all the tweets, |tweet| is each tweet
    #use each because you are just printing
    puts word_substituter(tweet)
    #put the shortened tweet version of the longer tweet
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
  word_substituter(tweet)
  if tweet.length > 140
    tweet[0..136] + "..."
  else tweet
  end
end
