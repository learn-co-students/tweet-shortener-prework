# Write your code here.
dictionary_hash = {
"hello" =>'hi',
"to" => '2', "two" => '2', "too" => '2' ,
"for"=>'4', "four" =>'4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&"
}

# #word_substituter
#   replaces long words with their expected short form (FAILED - 1)
def word_substituter(tweet)
  dictionary_hash = {
  "hello" =>'hi',
  "to" => '2', "two" => '2', "too" => '2' ,
  "for"=>'4', "four" =>'4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
  }

  tweet_split = tweet.split(" ")
  counter = 0
  tweet_split.each do |word|
    # puts "************************word:#{word}"
    # puts "************************#{dictionary_hash}"
    if dictionary_hash[word.downcase] == nil
      #do nothing
    else
      tweet_split[counter] = dictionary_hash[word.downcase]
    end
    counter += 1
  end
  # puts "#{tweet_split}"
  tweet_split.join(" ")
end

# #bulk_tweet_shortener
#   shortens each tweet and prints the results (FAILED - 2)
def bulk_tweet_shortener(tweets)
  # puts tweets
  tweets.each {|tweet| puts word_substituter(tweet)}
end

# #selective_tweet_shortener
#   shortens tweets that are more than 140 characters (FAILED - 3)
#   does not shorten tweets that are less than 130 characters (FAILED - 4)
def selective_tweet_shortener(tweet)
  # tweets.each do |tweet|
  new_tweet = ""
    if tweet.length > 140
     new_tweet =  word_substituter(tweet)
    else
      new_tweet= tweet
    end
  # end
  new_tweet
end
# #shortened_tweet_truncator
#   truncates tweets over 140 characters after shortening (FAILED - 5)
#   does not shorten tweets shorter than 140 characters. (FAILED - 6)
def shortened_tweet_truncator(tweet)
  # puts "**********************************#{tweet}"
  tweet = selective_tweet_shortener(tweet)
  # new_tweet = tweeet
  if tweet.length > 140
    #slice!(start, length) → new_ary or nil
    tweet = tweet.slice(0,140)
  end
  tweet
end
