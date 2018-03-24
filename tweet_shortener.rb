def dictionary
  word_list = {
  "hello" => 'hi',
  "to" => '2' ,
  "two"=> '2' ,
  "too" => '2' ,
  "for"  => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@" ,
  "and" => "&"
}
end


# #word_substituter
#    replaces long words with their expected short form (FAILED - 1)
def word_substituter (tweet="some thing need to be shorten, like two too")
  tweet= tweet.strip
  temp_a = tweet.split(" ")
  words_can_b_sh = dictionary.keys
  #puts words_can_b_sh
  temp = ""
#  puts temp_a
  temp_a.each do |word|
    if words_can_b_sh.include?(word.downcase)
      temp << dictionary[word.downcase]
    else
      temp << word
    end
    temp << " "
  end
  temp.strip
end

# tw="I'm running out of example tweets for you guys, "
# tw2="which is weird, because I'm a writer and this is just writing and I tweet all day. "
# tw3= " For real, "
# tw4= "you guys. For real."
# puts word_substituter(tw3)

#  #bulk_tweet_shortener
#    shortens each tweet and prints the results (FAILED - 2)
def bulk_tweet_shortener (tweets)
  if(tweets.size > 0)
    tweets.each do |tweet_each|
      puts word_substituter(tweet_each)
    end
  end
end



#  #selective_tweet_shortener
  #   shortens tweets that are more than 140 characters (FAILED - 3)
  #   does not shorten tweets that are less than 130 characters (FAILED - 4)
def selective_tweet_shortener (tweet)
  if(tweet.length > 140)
    word_substituter(tweet)
  else
    tweet
  end

end


  # #shortened_tweet_truncator
  #   truncates tweets over 140 characters after shortening (FAILED - 5)
  #   does not shorten tweets shorter than 140 characters. (FAILED - 6)

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    temp = word_substituter(tweet)
    temp = temp[0..139] if temp.length >140
    temp
  else
    tweet
  end
end
