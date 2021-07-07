# Write your code here.
def word_substituter
{"hello" =>'hi',
"too" =>'2',
"two" =>'2',
"to" =>'2',
"for" =>'4',
"four" =>'4',
'be' => 'b',
'you' =>'u',
"at" => "@",
"and" => "&"}
end


tweet = "Hello, I am two tweets"
tweet.split

def word_substituter(tweet)
  tweet_array = tweet.split

  tweet_array.each do |word|
    if word == dictionary.values
    dictionary.keys
    else
    end
  end
end

dummy_tweet ="hello, happy to be here."

word_substituter(dummy_tweet)
