def dictionary 
  {
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2', 
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&"
}

end

def word_substituter(str_tweets)
  result = []
  arr_dictionary = dictionary.keys
  arr_tweets = str_tweets.split(' ')
  arr_tweets.each do |word|
    arr_dictionary.include?(word) ? result << dictionary[word] : result << word
  end
  result.join(' ')
end

def bulk_tweet_shortener(arr_of_tweets)
  arr_of_tweets.map do |tweet|
    word_substituter(tweet)
  end
end

def selective_tweet_shortener(str_tweets)
  str_tweets > 140 ? word_substituter(str_tweets) : str_tweets
end

def shortened_tweet_truncator(str_tweets)
  str_tweets = str_tweets[0..139] + '...' if str_tweets > 140
  str_tweets
end

tweet1 = 'hello how are you'
tweet2 = 'you are cool at everything'
tweet3 = 'for you to be at home you must be'
longtweet = 'afsdfoi aoiuas fasdiouasdf asdfioausofahsdfj asdfoiasdfa asdfioausdoifasd asdfaosidufasdf asdofiuasoidfuaosdfs asdlfjaosidfsoidfuaoisd'

puts longtweet.length

# puts bulk_tweet_shortener([tweet1, tweet2, tweet3])

# word_substituter('hello this is a test to you')

def testfunc(str_tweets)
  arr_tweets = str_tweets.split
  
  puts arr_tweets & dictionary.keys
  
end